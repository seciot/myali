.class public Lcom/alipay/mobile/alipassapp/biz/bean/GetDynamicIdReqExt;
.super Ljava/lang/Object;


# instance fields
.field private bizType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/GetDynamicIdReqExt;->bizType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/GetDynamicIdReqExt;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/GetDynamicIdReqExt;->bizType:Ljava/lang/String;

    return-void
.end method
