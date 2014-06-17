.class final Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack;
.super Ljava/lang/Object;


# static fields
.field static final INITIAL_CLIENT_TO_SERVER_HEADER_TABLE:Ljava/util/List; = null

.field static final INITIAL_CLIENT_TO_SERVER_HEADER_TABLE_LENGTH:I = 0x4ee

.field static final INITIAL_SERVER_TO_CLIENT_HEADER_TABLE:Ljava/util/List; = null

.field static final INITIAL_SERVER_TO_CLIENT_HEADER_TABLE_LENGTH:I = 0x518

.field static final PREFIX_5_BITS:I = 0x1f

.field static final PREFIX_6_BITS:I = 0x3f

.field static final PREFIX_7_BITS:I = 0x7f

.field static final PREFIX_8_BITS:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, ":scheme"

    const-string/jumbo v3, "http"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, ":scheme"

    const-string/jumbo v3, "https"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, ":host"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, ":path"

    const-string/jumbo v3, "/"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, ":method"

    const-string/jumbo v3, "GET"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "accept"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "accept-charset"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "accept-encoding"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "accept-language"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "cookie"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "if-modified-since"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "user-agent"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "referer"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "authorization"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "allow"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "cache-control"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "connection"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "content-length"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "content-type"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "date"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "expect"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "from"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "if-match"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "if-none-match"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "if-range"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "if-unmodified-since"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "max-forwards"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "proxy-authorization"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "range"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "via"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack;->INITIAL_CLIENT_TO_SERVER_HEADER_TABLE:Ljava/util/List;

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, ":status"

    const-string/jumbo v3, "200"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, "age"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, "cache-control"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, "content-length"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v2, "content-type"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "date"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "etag"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "expires"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "last-modified"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "server"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "set-cookie"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "vary"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "via"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "access-control-allow-origin"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "accept-ranges"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "allow"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "connection"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "content-disposition"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "content-encoding"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "content-language"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "content-location"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "content-range"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "link"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "location"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "proxy-authenticate"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "refresh"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "retry-after"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "strict-transport-security"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "transfer-encoding"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;

    const-string/jumbo v3, "www-authenticate"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack$HeaderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Hpack;->INITIAL_SERVER_TO_CLIENT_HEADER_TABLE:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
