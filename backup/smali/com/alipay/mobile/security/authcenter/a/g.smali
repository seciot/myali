.class public final Lcom/alipay/mobile/security/authcenter/a/g;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobilegw/biz/shared/processer/taobao/BindingLoginIdService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UserRegisterBiz"

    sput-object v0, Lcom/alipay/mobile/security/authcenter/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilegw/biz/shared/processer/taobao/BindingLoginIdService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/taobao/BindingLoginIdService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/g;->b:Lcom/alipay/mobilegw/biz/shared/processer/taobao/BindingLoginIdService;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;)Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/g;->b:Lcom/alipay/mobilegw/biz/shared/processer/taobao/BindingLoginIdService;

    invoke-interface {v0, p1}, Lcom/alipay/mobilegw/biz/shared/processer/taobao/BindingLoginIdService;->bindingLoginId(Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdReq;)Lcom/alipay/mobileapp/common/service/facade/taobao/binding/model/BindingLoginIdRes;

    move-result-object v0

    return-object v0
.end method
