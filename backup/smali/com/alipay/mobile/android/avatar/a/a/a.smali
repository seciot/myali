.class public final Lcom/alipay/mobile/android/avatar/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/alipay/mobile/framework/service/common/RpcService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/android/avatar/a/a/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgRes;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/android/avatar/a/a/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileprod/biz/shared/account/service/ex/UploadHeadImgService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/shared/account/service/ex/UploadHeadImgService;

    new-instance v1, Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgReq;

    invoke-direct {v1}, Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgReq;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgReq;->setHeadImg(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobileprod/biz/shared/account/service/ex/UploadHeadImgService;->uploadHeadImg(Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgReq;)Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgRes;

    move-result-object v0

    return-object v0
.end method
