package com.alipay.mobile.quinox.classloader;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class MinPriorityThreadFactory implements ThreadFactory {
	private final AtomicInteger count = new AtomicInteger(0);

	public final Thread newThread(Runnable paramRunnable) {
		Thread localThread = new Thread(paramRunnable, "BootstrapClassloader #"
				+ count.incrementAndGet());
		localThread.setPriority(Thread.MIN_PRIORITY);
		return localThread;
	}
}
