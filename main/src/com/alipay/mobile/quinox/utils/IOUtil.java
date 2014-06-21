package com.alipay.mobile.quinox.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class IOUtil {
	public static List a(final BufferedReader bufferedReader)
			throws IOException {
		final ArrayList<String[]> list = new ArrayList<String[]>();
		while (true) {
			final String line = bufferedReader.readLine();
			if (line == null) {
				break;
			}
			if (line.trim().length() <= 0) {
				continue;
			}
			list.add(line.split("\\|"));
		}
		return list;
	}

	public static void a(final BufferedWriter bufferedWriter, final List list)
			throws IOException {
		final Iterator<String> iterator = list.iterator();
		while (iterator.hasNext()) {
			bufferedWriter.write(iterator.next());
			bufferedWriter.newLine();
		}
	}
}

/*
 * Location:
 * /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name: com.alipay.mobile.quinox.utils.a JD-Core Version: 0.6.2
 */