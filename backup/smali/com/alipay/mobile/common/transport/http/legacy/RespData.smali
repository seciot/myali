.class public Lcom/alipay/mobile/common/transport/http/legacy/RespData;
.super Ljava/lang/Object;


# instance fields
.field public charset:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public strResponse:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/legacy/RespData;->strResponse:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/legacy/RespData;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/legacy/RespData;->charset:Ljava/lang/String;

    return-void
.end method
