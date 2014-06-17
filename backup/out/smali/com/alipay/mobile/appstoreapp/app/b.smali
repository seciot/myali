.class final Lcom/alipay/mobile/appstoreapp/app/b;
.super Ljava/lang/Object;
.source "AppStoreApp.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/app/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "\u6388\u6743\u5931\u8d25\u3002"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    #getter for: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$000(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    #calls: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v3}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$100(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$200(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public final onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    #getter for: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$000(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    #calls: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, p1, p2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$100(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$200(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public final onNotNeedAuth()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "open url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    #getter for: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$000(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    #calls: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v3}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$100(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$200(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final onUserCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "\u60a8\u53d6\u6d88\u4e86\u672c\u6b21\u6388\u6743\u3002"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/b;->b:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    #getter for: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$000(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    #calls: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v3}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$100(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$200(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 157
    return-void
.end method
