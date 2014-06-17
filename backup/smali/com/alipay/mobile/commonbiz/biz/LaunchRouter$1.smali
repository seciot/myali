.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

.field final synthetic b:Landroid/content/SharedPreferences;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;Landroid/content/SharedPreferences;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->d:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    iput-object p3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->b:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->btn_user_tip_ok:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "showTip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->d:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->d:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-static {v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->b(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->btn_user_tip_no:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->a:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->dismiss()V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
