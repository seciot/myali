package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.util.Arrays;
import java.util.List;

final class Hpack
{
  static final List INITIAL_CLIENT_TO_SERVER_HEADER_TABLE;
  static final int INITIAL_CLIENT_TO_SERVER_HEADER_TABLE_LENGTH = 1262;
  static final List INITIAL_SERVER_TO_CLIENT_HEADER_TABLE = Arrays.asList(arrayOfHeaderEntry2);
  static final int INITIAL_SERVER_TO_CLIENT_HEADER_TABLE_LENGTH = 1304;
  static final int PREFIX_5_BITS = 31;
  static final int PREFIX_6_BITS = 63;
  static final int PREFIX_7_BITS = 127;
  static final int PREFIX_8_BITS = 255;

  static
  {
    Hpack.HeaderEntry[] arrayOfHeaderEntry1 = new Hpack.HeaderEntry[30];
    arrayOfHeaderEntry1[0] = new Hpack.HeaderEntry(":scheme", "http");
    arrayOfHeaderEntry1[1] = new Hpack.HeaderEntry(":scheme", "https");
    arrayOfHeaderEntry1[2] = new Hpack.HeaderEntry(":host", "");
    arrayOfHeaderEntry1[3] = new Hpack.HeaderEntry(":path", "/");
    arrayOfHeaderEntry1[4] = new Hpack.HeaderEntry(":method", "GET");
    arrayOfHeaderEntry1[5] = new Hpack.HeaderEntry("accept", "");
    arrayOfHeaderEntry1[6] = new Hpack.HeaderEntry("accept-charset", "");
    arrayOfHeaderEntry1[7] = new Hpack.HeaderEntry("accept-encoding", "");
    arrayOfHeaderEntry1[8] = new Hpack.HeaderEntry("accept-language", "");
    arrayOfHeaderEntry1[9] = new Hpack.HeaderEntry("cookie", "");
    arrayOfHeaderEntry1[10] = new Hpack.HeaderEntry("if-modified-since", "");
    arrayOfHeaderEntry1[11] = new Hpack.HeaderEntry("user-agent", "");
    arrayOfHeaderEntry1[12] = new Hpack.HeaderEntry("referer", "");
    arrayOfHeaderEntry1[13] = new Hpack.HeaderEntry("authorization", "");
    arrayOfHeaderEntry1[14] = new Hpack.HeaderEntry("allow", "");
    arrayOfHeaderEntry1[15] = new Hpack.HeaderEntry("cache-control", "");
    arrayOfHeaderEntry1[16] = new Hpack.HeaderEntry("connection", "");
    arrayOfHeaderEntry1[17] = new Hpack.HeaderEntry("content-length", "");
    arrayOfHeaderEntry1[18] = new Hpack.HeaderEntry("content-type", "");
    arrayOfHeaderEntry1[19] = new Hpack.HeaderEntry("date", "");
    arrayOfHeaderEntry1[20] = new Hpack.HeaderEntry("expect", "");
    arrayOfHeaderEntry1[21] = new Hpack.HeaderEntry("from", "");
    arrayOfHeaderEntry1[22] = new Hpack.HeaderEntry("if-match", "");
    arrayOfHeaderEntry1[23] = new Hpack.HeaderEntry("if-none-match", "");
    arrayOfHeaderEntry1[24] = new Hpack.HeaderEntry("if-range", "");
    arrayOfHeaderEntry1[25] = new Hpack.HeaderEntry("if-unmodified-since", "");
    arrayOfHeaderEntry1[26] = new Hpack.HeaderEntry("max-forwards", "");
    arrayOfHeaderEntry1[27] = new Hpack.HeaderEntry("proxy-authorization", "");
    arrayOfHeaderEntry1[28] = new Hpack.HeaderEntry("range", "");
    arrayOfHeaderEntry1[29] = new Hpack.HeaderEntry("via", "");
    INITIAL_CLIENT_TO_SERVER_HEADER_TABLE = Arrays.asList(arrayOfHeaderEntry1);
    Hpack.HeaderEntry[] arrayOfHeaderEntry2 = new Hpack.HeaderEntry[30];
    arrayOfHeaderEntry2[0] = new Hpack.HeaderEntry(":status", "200");
    arrayOfHeaderEntry2[1] = new Hpack.HeaderEntry("age", "");
    arrayOfHeaderEntry2[2] = new Hpack.HeaderEntry("cache-control", "");
    arrayOfHeaderEntry2[3] = new Hpack.HeaderEntry("content-length", "");
    arrayOfHeaderEntry2[4] = new Hpack.HeaderEntry("content-type", "");
    arrayOfHeaderEntry2[5] = new Hpack.HeaderEntry("date", "");
    arrayOfHeaderEntry2[6] = new Hpack.HeaderEntry("etag", "");
    arrayOfHeaderEntry2[7] = new Hpack.HeaderEntry("expires", "");
    arrayOfHeaderEntry2[8] = new Hpack.HeaderEntry("last-modified", "");
    arrayOfHeaderEntry2[9] = new Hpack.HeaderEntry("server", "");
    arrayOfHeaderEntry2[10] = new Hpack.HeaderEntry("set-cookie", "");
    arrayOfHeaderEntry2[11] = new Hpack.HeaderEntry("vary", "");
    arrayOfHeaderEntry2[12] = new Hpack.HeaderEntry("via", "");
    arrayOfHeaderEntry2[13] = new Hpack.HeaderEntry("access-control-allow-origin", "");
    arrayOfHeaderEntry2[14] = new Hpack.HeaderEntry("accept-ranges", "");
    arrayOfHeaderEntry2[15] = new Hpack.HeaderEntry("allow", "");
    arrayOfHeaderEntry2[16] = new Hpack.HeaderEntry("connection", "");
    arrayOfHeaderEntry2[17] = new Hpack.HeaderEntry("content-disposition", "");
    arrayOfHeaderEntry2[18] = new Hpack.HeaderEntry("content-encoding", "");
    arrayOfHeaderEntry2[19] = new Hpack.HeaderEntry("content-language", "");
    arrayOfHeaderEntry2[20] = new Hpack.HeaderEntry("content-location", "");
    arrayOfHeaderEntry2[21] = new Hpack.HeaderEntry("content-range", "");
    arrayOfHeaderEntry2[22] = new Hpack.HeaderEntry("link", "");
    arrayOfHeaderEntry2[23] = new Hpack.HeaderEntry("location", "");
    arrayOfHeaderEntry2[24] = new Hpack.HeaderEntry("proxy-authenticate", "");
    arrayOfHeaderEntry2[25] = new Hpack.HeaderEntry("refresh", "");
    arrayOfHeaderEntry2[26] = new Hpack.HeaderEntry("retry-after", "");
    arrayOfHeaderEntry2[27] = new Hpack.HeaderEntry("strict-transport-security", "");
    arrayOfHeaderEntry2[28] = new Hpack.HeaderEntry("transfer-encoding", "");
    arrayOfHeaderEntry2[29] = new Hpack.HeaderEntry("www-authenticate", "");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Hpack
 * JD-Core Version:    0.6.2
 */