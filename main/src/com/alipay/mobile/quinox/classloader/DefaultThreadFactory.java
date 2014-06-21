package com.alipay.mobile.quinox.classloader;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class DefaultThreadFactory implements ThreadFactory {
	private final AtomicInteger count = new AtomicInteger(0);

	public final Thread newThread(Runnable paramRunnable) {
		return new Thread(paramRunnable, "InitExecutor #"
				+ count.incrementAndGet());
	}
}
