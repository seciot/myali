package com.alipay.mobile.quinox.classloader;

import java.util.Set;

public interface Dependable {
	public Set getDepends();

	public Class loadClassFromCurrent(String className);
}