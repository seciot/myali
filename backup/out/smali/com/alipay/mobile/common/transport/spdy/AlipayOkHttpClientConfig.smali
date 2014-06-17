.class public Lcom/alipay/mobile/common/transport/spdy/AlipayOkHttpClientConfig;
.super Ljava/lang/Object;


# static fields
.field public static isNotUseNpn:Z

.field public static isTrustAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/AlipayOkHttpClientConfig;->isTrustAll:Z

    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/AlipayOkHttpClientConfig;->isNotUseNpn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initDevConfig()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/AlipayOkHttpClientConfig;->isTrustAll:Z

    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/AlipayOkHttpClientConfig;->isNotUseNpn:Z

    return-void
.end method
