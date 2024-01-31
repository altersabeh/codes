CUDA = nvcc
CUFLAGS = -g -O2
LDFLAGS = -lcuda -lcudart
EXECUTABLE = cuda-hello
CUDA_BINDIR = ../../dist/cuda
SRCDIR = src
OBJECTS = $(patsubst $(SRCDIR)/%.cu,%.o,$(wildcard $(SRCDIR)/*.cu))

.PHONY: $(EXECUTABLE) build run clean help

build: $(CUDA_BINDIR)/$(EXECUTABLE)

$(EXECUTABLE): build

$(CUDA_BINDIR)/$(EXECUTABLE): $(CUDA_BINDIR)/$(OBJECTS)
	@mkdir $(CUDA_BINDIR) -p
	$(CUDA) $^ $(CUFLAGS) $(LDFLAGS) -o $@

$(CUDA_BINDIR)/%.o: $(SRCDIR)/%.cu
	@mkdir $(CUDA_BINDIR) -p
	$(CUDA) -c $(CUFLAGS) $< -o $@

run: $(CUDA_BINDIR)/$(EXECUTABLE)
	@echo Running $(EXECUTABLE) program:
	@cd $(CURDIR)/$(CUDA_BINDIR) && \
	./$(EXECUTABLE)

clean:
	@cd $(CUDA_BINDIR) && \
	rm -rf $(EXECUTABLE) $(OBJECTS) $(DEPS)

TITLE = Hello World
LANGUAGE = CUDA

help:
	@echo $(EXECUTABLE) - $(TITLE) program written in $(LANGUAGE)
