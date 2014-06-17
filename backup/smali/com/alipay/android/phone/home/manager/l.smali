.class final Lcom/alipay/android/phone/home/manager/l;
.super Ljava/lang/Object;
.source "HomeAppsOnItemLongClickListener.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/l;->b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/l;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 1

    .prologue
    .line 141
    sget v0, Lcom/alipay/android/phone/openplatform/R$string;->b:I

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->showToastCenter(I)V

    .line 142
    return-void
.end method

.method public final onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/l;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addToDesktop(Ljava/util/HashMap;)V

    .line 137
    return-void
.end method

.method public final onNotNeedAuth()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/l;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addToDesktop(Ljava/util/HashMap;)V

    .line 147
    return-void
.end method

.method public final onUserCancel()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
