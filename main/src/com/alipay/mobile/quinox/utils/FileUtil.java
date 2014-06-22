package com.alipay.mobile.quinox.utils;

import java.io.BufferedInputStream;
import java.io.File;

public final class FileUtil {
	public static void saveInputStreamToFile(BufferedInputStream paramBufferedInputStream,
			File paramFile) {
		// try
		// {
		// localFileOutputStream = new FileOutputStream(paramFile);
		// try
		// {
		// byte[] arrayOfByte = new byte[8192];
		// while (true)
		// {
		// int i = paramBufferedInputStream.read(arrayOfByte);
		// if (i <= 0)
		// break;
		// localFileOutputStream.write(arrayOfByte, 0, i);
		// }
		// }
		// finally
		// {
		// }
		// if (localFileOutputStream != null)
		// localFileOutputStream.close();
		// throw localObject1;
		// localFileOutputStream.flush();
		// localFileOutputStream.close();
		// return;
		// }
		// finally
		// {
		// while (true)
		// FileOutputStream localFileOutputStream = null;
		// }
	}

	public static void deleteFileIfExists(final String fileName) {
		if (fileName != null) {
			final File file = new File(fileName);
			if (file.exists()) {
				file.deleteOnExit();
			}
		}
	}
}
