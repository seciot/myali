package com.alipay.mobile.quinox.classloader;

import java.util.Set;

public interface Loadable {
	public Set<Loadable> getDepends();

	public Class<?> loadClassFromCurrent(String className) throws ClassNotFoundException;
}