.class Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-void
.end method


# virtual methods
.method public uploadContacts(Lcom/alipay/mobileprod/biz/contact/model/UploadContact;Z)Z
    .locals 2
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderProxy;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileprod/biz/contact/facade/ContactManageServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/contact/facade/ContactManageServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobileprod/biz/contact/facade/ContactManageServiceFacade;->upload(Lcom/alipay/mobileprod/biz/contact/model/UploadContact;Z)Z

    move-result v0

    return v0
.end method
