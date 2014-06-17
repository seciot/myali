.class final Lcom/alipay/mobile/appstoreapp/ui/c;
.super Ljava/lang/Object;
.source "AppDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/c;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/c;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->g(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/c;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->g(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/c;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    sget v2, Lcom/alipay/mobile/openplatform/R$string;->f:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/c;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    const-string/jumbo v1, "main_button_style"

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;Ljava/lang/String;)V

    .line 337
    return-void
.end method
