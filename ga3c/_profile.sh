CUDA_VISIBLE_DEVICES=0 nvprof --print-gpu-trace --force-overwrite -o proftest.nvprof ./GA3C.py &> gpu-trace.txt

CUDA_VISIBLE_DEVICES=0 nvprof ./GA3C.py &> prof-summary.txt