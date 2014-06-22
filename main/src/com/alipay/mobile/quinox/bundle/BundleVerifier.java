package com.alipay.mobile.quinox.bundle;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.security.auth.x500.X500Principal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;

import com.alipay.mobile.quinox.utils.StringUtil;

public final class BundleVerifier {
	private static final X500Principal x500Principal = new X500Principal(
			"CN=Android Debug,O=Android,C=US");
	private Context ctx;
	private BundlesManager bundlesManager;
	private Signature[] signatures;
	private boolean e;

	public BundleVerifier(Context paramContext, BundlesManager paramb) {
		this.ctx = paramContext;
		this.bundlesManager = paramb;
	}

	private void a(Map paramMap, Set<AppBundle> bundles, boolean paramBoolean) {
		Iterator<AppBundle> appBundlesIte = bundles.iterator();
		while (appBundlesIte.hasNext()) {
			AppBundle appBundle = (AppBundle) appBundlesIte.next();
			paramMap.remove(appBundle.getBundleName());
			appBundle.m();
			if (paramBoolean) {
				bundlesManager.getBundle(appBundle.getBundlePath());
				bundlesManager.getBundle(com.alipay.mobile.quinox.utils.DexUtil
						.getDexFullPath(appBundle.getBundlePath(),
								this.bundlesManager.c()));
				Log.e("BundleVerifier", appBundle.getBundleName()
						+ "deleted jar.");
				try {
					this.bundlesManager.j().a(appBundle.getBundleName());
				} catch (Exception localException) {
					Log.e("BundleVerifier", appBundle.getBundleName()
							+ " delete ", localException);
				}
			}
		}
	}

	private void c() {
		final Iterator<AppBundle> b = bundlesManager.getAllBundlesIterator();
		final HashSet<AppBundle> set = new HashSet<AppBundle>();
		while (b.hasNext()) {
			final AppBundle a = b.next();
			final boolean b2 = a.getBundlePath() != null
					&& new File(a.getBundlePath()).exists();
			if (!this.bundlesManager.b(a.getBundleName()) || b2) {
				if (!b2) {
					Log.e("BundleVerifier",
							"jar file deleted: " + a.getBundleName());
					set.add(a);
				} else {
					if (this.e || a.a(this.signatures)) {
						continue;
					}
					Log.e("BundleVerifier",
							"verify sign error: " + a.getBundleName());
					set.add(a);
				}
			}
		}
		if (set.size() > 0) {
			this.a(this.bundlesManager.f(), set, true);
			throw new RuntimeException("verify sign error: "
					+ StringUtil.a(set));
		}
	}

	private Signature[] d() {
		try {
			Signature[] arrayOfSignature = this.ctx.getPackageManager()
					.getPackageInfo(this.ctx.getPackageName(), 64).signatures;
			return arrayOfSignature;
		} catch (PackageManager.NameNotFoundException localNameNotFoundException) {
			Log.e("BundleVerifier", "get  signature error ",
					localNameNotFoundException);
		}
		return null;
	}

	public final void a() {
		this.signatures = this.d();
		final Signature[] d = this.signatures;
		if (d != null) {
			try {
				final CertificateFactory instance = CertificateFactory
						.getInstance("X.509");
				for (int n = 0; n < d.length
						&& !(this.e = ((X509Certificate) instance
								.generateCertificate(new ByteArrayInputStream(
										d[n].toByteArray())))
								.getSubjectX500Principal()
								.equals(com.alipay.mobile.quinox.bundle.BundleVerifier.x500Principal)); ++n) {
				}
			} catch (CertificateException ex) {
				Log.e("BundleVerifier", "init  signature error ",
						(Throwable) ex);
			}
		}
	}

	public final void a(Map<String, AppBundle> map, boolean b) {
		final HashSet<AppBundle> set = new HashSet<AppBundle>();
		for (final AppBundle a : map.values()) {
			if (a.getRequireBundleName() != null) {
				for (final String s : a.getRequireBundleName()) {
					Label_0342: {
						if (s != null && s.trim().length() > 0) {
							final String[] split = s.split("@");
							String s3 = null;
							AppBundle a2 = null;
							Label_0268: {
								try {
									final String s2 = split[0];
									s3 = split[1];
									if (this.bundlesManager.b(s2)
											|| s.contains("-quinox")) {
										break Label_0342;
									}
									a2 = map.get(s2);
									if (a2 != null && !set.contains(a2)) {
										break Label_0268;
									}
									Log.e("BundleVerifier",
											a.getFullBundleName()
													+ "'s dependencies error: can't find"
													+ s);
									set.add(a);
								} catch (Exception ex) {
									Log.e("BundleVerifier",
											a.getFullBundleName()
													+ "'s verifyDependencies"
													+ s, (Throwable) ex);
									set.add(a);
								}
								break;
							}
							if (StringUtil.a(s3, a2.getBundleVersion())) {
								Log.e("BundleVerifier", a.getFullBundleName()
										+ "'s dependencies error:" + s + "->"
										+ a2.getFullBundleName());
								set.add(a);
								break;
							}
						}
					}
				}
			}
		}
		if (set.size() > 0) {
			this.a(map, set, b);
			this.a(map, b);
			throw new RuntimeException("verify dependencies error: "
					+ StringUtil.a(set));
		}

	}

	public final boolean b() { // TODO
		return true;
		// boolean bool = true;
		// StringBuffer localStringBuffer = new StringBuffer();
		// try
		// {
		// c();
		// }
		// catch (Exception localException1)
		// {
		// try
		// {
		// while (true)
		// {
		// a(this.c.f(), true);
		// if (localStringBuffer.length() > 0)
		// {
		// ((LauncherApplication)this.b).LogError(new
		// Exception(localStringBuffer.toString()),
		// "MonitorPoint_DynamicLoad_StartErr");
		// bool = false;
		// }
		// return bool;
		// localException1 = localException1;
		// localStringBuffer.append(localException1.getMessage());
		// }
		// }
		// catch (Exception localException2)
		// {
		// while (true)
		// localStringBuffer.append(localException2.getMessage());
		// }
		// }
	}
}
