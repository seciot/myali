.class final Lcom/alipay/android/phone/publicplatform/home/c;
.super Ljava/lang/Object;
.source "PublicHomeWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/phone/publicplatform/widget/a;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/home/c;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 234
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 240
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_3

    .line 242
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/c;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    iget-object v1, v1, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->publicHomeManager:Lcom/alipay/mobile/publicsvc/home/proguard/h/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/publicsvc/home/proguard/h/a;->calculateMsgCount(Ljava/lang/String;)Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;->getTyle()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/c;->a:Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;->access$100(Lcom/alipay/android/phone/publicplatform/home/PublicHomeWidgetGroup;Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    :cond_1
    :goto_0
    return-object v0

    .line 253
    :cond_2
    new-instance v0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;

    invoke-direct {v0, v3, v2}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;-><init>(II)V

    goto :goto_0

    .line 260
    :cond_3
    new-instance v0, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;

    invoke-direct {v0, v3, v2}, Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;-><init>(II)V

    goto :goto_0
.end method
