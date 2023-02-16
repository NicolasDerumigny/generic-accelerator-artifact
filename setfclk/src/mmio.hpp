// Provide access to the any MMIO location through an existing type
#ifndef MMIO_H
#define MMIO_H

#include <cerrno>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cassert>

#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>

class MMIO {
	static int _mem_fd;
	static int _depth_mem_fd;
	void* _memory;
	unsigned int size;

public:
	MMIO(uintptr_t addr, unsigned int size) {
		this->size = size;
		if (this->_mem_fd == 0) {
			this->_mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
		}
		this->_memory = mmap(NULL,
				   this->size, PROT_READ | PROT_WRITE,
				   MAP_SHARED, this->_mem_fd, addr);
		if(this->_memory == MAP_FAILED) {
			perror("mmap() failed");
			exit(EXIT_FAILURE);
		}
		this->_depth_mem_fd++;
	}

	~MMIO() {
	    if (munmap(this->_memory, this->size)<0) {
	        perror("close(_mem_fd) failed");
	        exit(EXIT_FAILURE);
	    }
	    this->_depth_mem_fd--;
	    if (this->_depth_mem_fd == 0 && close(this->_mem_fd)<0) {
	        perror("close(_mem_fd) failed");
	        exit(EXIT_FAILURE);
	    }
	}

	void *memory() {
		return this->_memory;
	}
};

#endif // MMIO_H
