package com.alipay.mobile.quinox.utils;

public final class DexUtil {
	public static String getDexFullPath(String relativePath, final String rootPath) {
		if (relativePath == null || rootPath == null) {
			return null;
		}
		final StringBuilder sb = new StringBuilder(80);
		sb.append(rootPath);
		if (!rootPath.endsWith("/")) {
			sb.append("/");
		}
		
		final int lastIndex = relativePath.lastIndexOf("/");
		if (lastIndex >= 0) {
			relativePath = relativePath.substring(lastIndex + 1);
		}
		
		final int lastIndex2 = relativePath.lastIndexOf(".");
		if (lastIndex2 < 0) {
			sb.append(relativePath);
		} else {
			sb.append(relativePath, 0, lastIndex2);
		}
		sb.append(".dex");
		return sb.toString();
	}
}
