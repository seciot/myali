package com.alipay.mobile.quinox.utils;

public final class DexUtil {
	public static String getDexFullPath(String name, final String path) {
		if (name == null || path == null) {
			return null;
		}
		final StringBuilder sb = new StringBuilder(80);
		sb.append(path);
		if (!path.endsWith("/")) {
			sb.append("/");
		}
		
		final int lastIndex = name.lastIndexOf("/");
		if (lastIndex >= 0) {
			name = name.substring(lastIndex + 1);
		}
		
		final int lastIndex2 = name.lastIndexOf(".");
		if (lastIndex2 < 0) {
			sb.append(name);
		} else {
			sb.append(name, 0, lastIndex2);
		}
		sb.append(".dex");
		return sb.toString();
	}
}
