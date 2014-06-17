.class final Lcom/alipay/mobile/alipassapp/ui/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/bq;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/br;->a:Lcom/alipay/mobile/alipassapp/ui/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/br;->a:Lcom/alipay/mobile/alipassapp/ui/bq;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/bq;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/br;->a:Lcom/alipay/mobile/alipassapp/ui/bq;

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/bq;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    invoke-static {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;)Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/br;->a:Lcom/alipay/mobile/alipassapp/ui/bq;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/bq;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/br;->a:Lcom/alipay/mobile/alipassapp/ui/bq;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/bq;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/bs;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/bs;-><init>(Lcom/alipay/mobile/alipassapp/ui/br;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;->bindPhone(Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;)V

    goto :goto_0
.end method
