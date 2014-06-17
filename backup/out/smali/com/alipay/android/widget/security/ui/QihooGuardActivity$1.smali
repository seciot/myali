.class Lcom/alipay/android/widget/security/ui/QihooGuardActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$1;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchListener(ZLandroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isSupportSmsGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$1;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->showProgressDialog(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->openQihooApp()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$1;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->dismissProgressDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$1;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    const-string/jumbo v1, "\u4f60\u7684360\u624b\u673a\u536b\u58eb\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u91cd\u88c5"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->toast(Ljava/lang/String;I)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->openQihooDownload()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isOtherVersionQihoo360Installed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$1;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    const-string/jumbo v1, "\u9700\u5b89\u88c5\u901a\u7528\u7248360\u624b\u673a\u536b\u58eb"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1
.end method
