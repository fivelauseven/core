clc;clear all
ditubZ=[153.76445 25.2 110.2
153.58998 25.202 110.2
153.21336 25.205 110.2
156.219 25.207 110.2
179.9846 25.21 110.2
222.33669 25.212 110.2
183.21558 25.214 110.2
161.73906 25.217 110.2
152.10455 25.219 110.2
156.02763 25.221 110.2
158.2962 25.224 110.2
159.05049 25.226 110.2
159.82112 25.229 110.2
157.69298 25.231 110.2
167.07799 25.233 110.2
236.55281 25.236 110.2
207.27284 25.238 110.2
179.5962 25.24 110.2
160.73224 25.243 110.2
160.8838 25.245 110.2
158.80464 25.248 110.2
160.36 25.25 110.2
159.39578 25.2 110.202
155.58987 25.202 110.202
154.8697 25.205 110.202
155.86526 25.207 110.202
158.43622 25.21 110.202
190.11407 25.212 110.202
157.06409 25.214 110.202
169.27751 25.217 110.202
153.58574 25.219 110.202
162.07794 25.221 110.202
157.88747 25.224 110.202
169.19524 25.226 110.202
158.06978 25.229 110.202
168.47949 25.231 110.202
163.58266 25.233 110.202
249.76495 25.236 110.202
211.65121 25.238 110.202
223.32751 25.24 110.202
161.44772 25.243 110.202
159.91034 25.245 110.202
159.9808 25.248 110.202
159.69852 25.25 110.202
200.55775 25.2 110.205
168.8689 25.202 110.205
155.29333 25.205 110.205
156.664 25.207 110.205
154.664 25.21 110.205
153.63626 25.212 110.205
154.21298 25.214 110.205
153.94559 25.217 110.205
154.21562 25.219 110.205
166.5618 25.221 110.205
164.18956 25.224 110.205
162.421 25.226 110.205
156.06631 25.229 110.205
164.80699 25.231 110.205
163.79726 25.233 110.205
163.61137 25.236 110.205
171.02916 25.238 110.205
173.90346 25.24 110.205
161.09743 25.243 110.205
167.66829 25.245 110.205
161.92375 25.248 110.205
182.11893 25.25 110.205
301.47214 25.2 110.207
247.04277 25.202 110.207
160.35551 25.205 110.207
155.56763 25.207 110.207
155.88298 25.21 110.207
156.84604 25.212 110.207
155.87431 25.214 110.207
155.81209 25.217 110.207
158.9705 25.219 110.207
154.47371 25.221 110.207
156.0409 25.224 110.207
156.16411 25.226 110.207
154.25638 25.229 110.207
155.13991 25.231 110.207
160.0499 25.233 110.207
162.08179 25.236 110.207
177.2028 25.238 110.207
161.66217 25.24 110.207
161.67325 25.243 110.207
170.11644 25.245 110.207
166.3976 25.248 110.207
166.01945 25.25 110.207
294.55872 25.2 110.21
351.99966 25.202 110.21
255.1478 25.205 110.21
162.02989 25.207 110.21
156.26146 25.21 110.21
156 25.212 110.21
156.95444 25.214 110.21
157.13173 25.217 110.21
155.16925 25.219 110.21
156 25.221 110.21
158.83525 25.224 110.21
158.1006 25.226 110.21
155 25.229 110.21
165.33487 25.231 110.21
157.72604 25.233 110.21
161.08182 25.236 110.21
158.4686 25.238 110.21
160.96823 25.24 110.21
161.7833 25.243 110.21
158.912 25.245 110.21
161.46683 25.248 110.21
163.00737 25.25 110.21
214.3272 25.2 110.212
292.84494 25.202 110.212
327.23535 25.205 110.212
190.12216 25.207 110.212
156.62117 25.21 110.212
154.63626 25.212 110.212
157.40747 25.214 110.212
201.6042 25.217 110.212
161.00708 25.219 110.212
157.88498 25.221 110.212
165.78723 25.224 110.212
163.87378 25.226 110.212
157.73282 25.229 110.212
161.38452 25.231 110.212
160.43933 25.233 110.212
204.09088 25.236 110.212
165.7062 25.238 110.212
158.91133 25.24 110.212
160.29192 25.243 110.212
177.53047 25.245 110.212
173.55356 25.248 110.212
159.1956 25.25 110.212
183.91034 25.2 110.214
198.10269 25.202 110.214
278.7405 25.205 110.214
229.61584 25.207 110.214
161.53836 25.21 110.214
157.59253 25.212 110.214
156.45102 25.214 110.214
160.62013 25.217 110.214
155.40918 25.219 110.214
156.48534 25.221 110.214
162.69785 25.224 110.214
157.29875 25.226 110.214
158.57864 25.229 110.214
195.6393 25.231 110.214
194.752 25.233 110.214
234.05017 25.236 110.214
161.88362 25.238 110.214
162.01627 25.24 110.214
168.80717 25.243 110.214
243.51796 25.245 110.214
257.1679 25.248 110.214
195.34407 25.25 110.214
273.2777 25.2 110.217
258.53546 25.202 110.217
182.62238 25.205 110.217
178.78102 25.207 110.217
248.45656 25.21 110.217
180.8085 25.212 110.217
157.37402 25.214 110.217
157.78928 25.217 110.217
156.19298 25.219 110.217
157 25.221 110.217
158.90324 25.224 110.217
157.08624 25.226 110.217
197.43939 25.229 110.217
256.81406 25.231 110.217
246.00485 25.233 110.217
208.08562 25.236 110.217
235.79807 25.238 110.217
276.20166 25.24 110.217
252.38205 25.243 110.217
290.97583 25.245 110.217
316.42535 25.248 110.217
302.90134 25.25 110.217
247.33253 25.2 110.219
243.58276 25.202 110.219
188.15392 25.205 110.219
201.16687 25.207 110.219
355.34732 25.21 110.219
228.91736 25.212 110.219
160.93394 25.214 110.219
159.05298 25.217 110.219
157.56071 25.219 110.219
157.84943 25.221 110.219
167.02728 25.224 110.219
158.00134 25.226 110.219
186.95946 25.229 110.219
226.55405 25.231 110.219
222.6563 25.233 110.219
257.75177 25.236 110.219
293.41772 25.238 110.219
234.74773 25.24 110.219
331.916 25.243 110.219
366.69714 25.245 110.219
325.08438 25.248 110.219
327.59885 25.25 110.219
175.99272 25.2 110.221
199.39934 25.202 110.221
216.92177 25.205 110.221
222.36923 25.207 110.221
304.2342 25.21 110.221
239.07527 25.212 110.221
173.56055 25.214 110.221
185.78374 25.217 110.221
174.70827 25.219 110.221
184.19394 25.221 110.221
190.18678 25.224 110.221
170.41138 25.226 110.221
166.12743 25.229 110.221
195.35384 25.231 110.221
187.2582 25.233 110.221
239.74956 25.236 110.221
270.08423 25.238 110.221
208.18333 25.24 110.221
293.20337 25.243 110.221
349.20206 25.245 110.221
291.1141 25.248 110.221
304.8525 25.25 110.221
216.86499 25.2 110.224
220.14742 25.202 110.224
312.22736 25.205 110.224
290.56097 25.207 110.224
250.59059 25.21 110.224
233.4344 25.212 110.224
197.82346 25.214 110.224
245.91705 25.217 110.224
287.5884 25.219 110.224
303.7084 25.221 110.224
212.09785 25.224 110.224
287.89844 25.226 110.224
207.71182 25.229 110.224
283.6499 25.231 110.224
304.6782 25.233 110.224
335.16537 25.236 110.224
219.30795 25.238 110.224
179.74721 25.24 110.224
207.0788 25.243 110.224
302.3485 25.245 110.224
316.0203 25.248 110.224
329.3879 25.25 110.224
177.27438 25.2 110.226
176.00739 25.202 110.226
268.38547 25.205 110.226
262.77863 25.207 110.226
217.77066 25.21 110.226
219.17393 25.212 110.226
198.34 25.214 110.226
261.46698 25.217 110.226
322.63797 25.219 110.226
332.58557 25.221 110.226
246.04704 25.224 110.226
277.22406 25.226 110.226
236.2438 25.229 110.226
365.054 25.231 110.226
424.0055 25.233 110.226
375.84128 25.236 110.226
284.6416 25.238 110.226
201.33743 25.24 110.226
187.19472 25.243 110.226
278.19308 25.245 110.226
308.90866 25.248 110.226
325.28143 25.25 110.226
167.86559 25.2 110.229
171.40735 25.202 110.229
201.87102 25.205 110.229
246.4349 25.207 110.229
240.74303 25.21 110.229
191.43759 25.212 110.229
195.15169 25.214 110.229
251.29805 25.217 110.229
243.177 25.219 110.229
239.09464 25.221 110.229
310.26447 25.224 110.229
207.6635 25.226 110.229
247.76042 25.229 110.229
278.9626 25.231 110.229
343.3008 25.233 110.229
312.98114 25.236 110.229
365.17923 25.238 110.229
364.74985 25.24 110.229
189.96793 25.243 110.229
195.5231 25.245 110.229
317.4561 25.248 110.229
271.2429 25.25 110.229
167.60457 25.2 110.231
168 25.202 110.231
171.0072 25.205 110.231
179.41653 25.207 110.231
209.18213 25.21 110.231
238.98509 25.212 110.231
245.36761 25.214 110.231
213.15877 25.217 110.231
195.23003 25.219 110.231
191.82454 25.221 110.231
217.48375 25.224 110.231
208.55879 25.226 110.231
228.42813 25.229 110.231
228.35004 25.231 110.231
257.33667 25.233 110.231
274.4351 25.236 110.231
344.40784 25.238 110.231
386.03983 25.24 110.231
236.1163 25.243 110.231
168.87787 25.245 110.231
284.0082 25.248 110.231
252.24306 25.25 110.231
166.87805 25.2 110.233
173.00009 25.202 110.233
165.88373 25.205 110.233
171.70898 25.207 110.233
234.70377 25.21 110.233
239.90756 25.212 110.233
204.23802 25.214 110.233
263.0516 25.217 110.233
204.69756 25.219 110.233
189.2988 25.221 110.233
196.17311 25.224 110.233
219.68271 25.226 110.233
227.55862 25.229 110.233
214.82533 25.231 110.233
238.00311 25.233 110.233
229.8232 25.236 110.233
270.9323 25.238 110.233
340.3157 25.24 110.233
278.12473 25.243 110.233
172.94426 25.245 110.233
240.62267 25.248 110.233
350.73672 25.25 110.233
166.65921 25.2 110.236
212.94519 25.202 110.236
170.02225 25.205 110.236
173.71614 25.207 110.236
205.5633 25.21 110.236
181.58598 25.212 110.236
180.83012 25.214 110.236
280.29404 25.217 110.236
201.09595 25.219 110.236
209.96635 25.221 110.236
243.06342 25.224 110.236
237.0603 25.226 110.236
265.23016 25.229 110.236
259.20172 25.231 110.236
263.02084 25.233 110.236
246.13457 25.236 110.236
235.57059 25.238 110.236
282.30438 25.24 110.236
316.14008 25.243 110.236
175.57204 25.245 110.236
187.08228 25.248 110.236
254.21509 25.25 110.236
176.57196 25.2 110.238
165.3536 25.202 110.238
180.55339 25.205 110.238
173.97206 25.207 110.238
183.57336 25.21 110.238
175.08832 25.212 110.238
179.1959 25.214 110.238
231.71368 25.217 110.238
191.50381 25.219 110.238
202.791 25.221 110.238
236.75633 25.224 110.238
253.55396 25.226 110.238
329.45007 25.229 110.238
313.58148 25.231 110.238
308.20224 25.233 110.238
246.26561 25.236 110.238
241.65163 25.238 110.238
310.82544 25.24 110.238
287.089 25.243 110.238
171.63634 25.245 110.238
228.70364 25.248 110.238
201.13464 25.25 110.238
164.11972 25.2 110.24
167.01984 25.202 110.24
252.87167 25.205 110.24
272.05267 25.207 110.24
202.00534 25.21 110.24
173.23149 25.212 110.24
179.5453 25.214 110.24
188.18134 25.217 110.24
187.0324 25.219 110.24
187.16068 25.221 110.24
252.63156 25.224 110.24
270.0564 25.226 110.24
302.1786 25.229 110.24
281.69403 25.231 110.24
284.54797 25.233 110.24
268.31183 25.236 110.24
214.20592 25.238 110.24
231.85985 25.24 110.24
247.59293 25.243 110.24
165.3114 25.245 110.24
209.11014 25.248 110.24
186.99155 25.25 110.24
163.01566 25.2 110.243
166.27863 25.202 110.243
181.27333 25.205 110.243
171.62186 25.207 110.243
176.68674 25.21 110.243
181.44139 25.212 110.243
182.1984 25.214 110.243
210.32727 25.217 110.243
209.64105 25.219 110.243
223.96301 25.221 110.243
247.38159 25.224 110.243
306.99792 25.226 110.243
259.85083 25.229 110.243
302.79697 25.231 110.243
250.90654 25.233 110.243
274.91138 25.236 110.243
219.47208 25.238 110.243
257.33987 25.24 110.243
273.0055 25.243 110.243
221.28844 25.245 110.243
167.39978 25.248 110.243
170.62355 25.25 110.243
195.83585 25.2 110.245
182.48532 25.202 110.245
165.72952 25.205 110.245
186.19678 25.207 110.245
190.01343 25.21 110.245
203.848 25.212 110.245
181.08978 25.214 110.245
215.63528 25.217 110.245
232.35202 25.219 110.245
218.92143 25.221 110.245
262.25385 25.224 110.245
295.9121 25.226 110.245
289.37424 25.229 110.245
307.72403 25.231 110.245
242.92325 25.233 110.245
292.6413 25.236 110.245
235.30396 25.238 110.245
207.00523 25.24 110.245
293.08322 25.243 110.245
283.38498 25.245 110.245
216.58058 25.248 110.245
149.33058 25.25 110.245
165.89902 25.2 110.248
201.55672 25.202 110.248
252.87439 25.205 110.248
290.55627 25.207 110.248
183.85617 25.21 110.248
197.42482 25.212 110.248
181.58408 25.214 110.248
215.89302 25.217 110.248
264.48926 25.219 110.248
262.00342 25.221 110.248
250.06732 25.224 110.248
257.07257 25.226 110.248
254.86478 25.229 110.248
283.3844 25.231 110.248
237.33612 25.233 110.248
243.87813 25.236 110.248
245.50407 25.238 110.248
173.56721 25.24 110.248
214.69684 25.243 110.248
201.97429 25.245 110.248
172.96156 25.248 110.248
151.72548 25.25 110.248
175.504 25.2 110.25
198.72406 25.202 110.25
203.07254 25.205 110.25
186.1028 25.207 110.25
175.03076 25.21 110.25
235.3071 25.212 110.25
188.22862 25.214 110.25
213.12811 25.217 110.25
295.2768 25.219 110.25
254.78528 25.221 110.25
233.22304 25.224 110.25
244.69511 25.226 110.25
238.82521 25.229 110.25
227.66838 25.231 110.25
235.39104 25.233 110.25
214.88992 25.236 110.25
205.56917 25.238 110.25
171.2201 25.24 110.25
240.58069 25.243 110.25
166.0912 25.245 110.25
172.6192 25.248 110.25
152.24 25.25 110.25
];
dituZ=reshape(ditubZ(:,1),22,22);
dituZ3=dituZ;
dituZx=ditubZ(1:22,2);
dituZy=ditubZ(1:22:end,3);
mesh(dituZ)
