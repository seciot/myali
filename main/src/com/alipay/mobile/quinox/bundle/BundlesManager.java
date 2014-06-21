package com.alipay.mobile.quinox.bundle;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

//b.java
public interface BundlesManager {
	//#a
	 AppBundle getBundle(String paramString);

	 void a();

	 void a(List<String> paramList);

	 void a(String[] paramArrayOfString);

	 Iterator b();

	 boolean b(String paramString);

	 AppBundle c(String paramString);

	 String c();

	 String d();

	 String d(String paramString);

	 void e();

	 //#e
	 void removeBundle(String paramString);

	 Map f();

	 String[] g();

	 String[] h();

	 Set<AppBundle> getAllBundles();

	 com.alipay.mobile.quinox.classloader.BootstrapClassloader j();
}