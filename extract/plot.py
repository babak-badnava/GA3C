import numpy as np

filename='tmp.csv'
arr = np.loadtxt(filename,dtype=np.float,delimiter=',')

print arr.shape

cut = 12000

arr = arr[0:cut,:]

arr_time = arr[:,0]
arr_episode = arr[:,1]
arr_score = arr[:,2]
arr_pps = arr[:,3]
arr_tps = arr[:,4]
arr_nt = arr[:,5]
arr_np = arr[:,6]
arr_na = arr[:,7]

import matplotlib.pyplot as plt

fig = plt.figure(1, figsize=(5,8))
fig.subplots_adjust(left = 0.15, bottom = 0.07,
        	                    right = 0.94, top = 0.94,
        	                    hspace = 0.23)
                                
ax = plt.subplot(311)
ax.plot(arr_time/3600.0,arr_score, label='score')
ax.legend(loc='lower right')
ax.set_xlabel('time(h)')
ax.set_ylabel('Pong score')

ax = plt.subplot(312)
ax.plot(arr_time/3600.0,arr_pps, label='PPS')
ax.legend(loc='lower right')
ax.set_xlabel('time(h)')
ax.set_ylabel('Prediction Per Second')

ax = plt.subplot(313)
ax.plot(arr_time/3600.0,arr_tps, label='TPS')
ax.legend(loc='lower right')
ax.set_xlabel('time(h)')
ax.set_ylabel('Training Per Second')

plt.show()

fig.savefig('ga3c.pdf',format='pdf')

