if [[ -e proftest.nvprof ]]
then
	rm proftest.nvprof
fi

CUDA_VISIBLE_DEVICES=0 nvprof --print-gpu-trace -o proftest.nvprof ./GA3C.py &> gpu-trace.txt