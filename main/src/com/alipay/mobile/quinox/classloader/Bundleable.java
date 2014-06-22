package com.alipay.mobile.quinox.classloader;

import java.util.Set;

public interface Bundleable {
	public Set<Bundleable> getDepends();

	public Class<?> loadClassFromCurrent(String className) throws ClassNotFoundException;
}