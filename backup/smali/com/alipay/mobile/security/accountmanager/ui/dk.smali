.class final Lcom/alipay/mobile/security/accountmanager/ui/dk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dk;->b:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/dk;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dk;->b:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dk;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/dk;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dk;->b:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->showProgressDialog(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dk;->b:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dk;->b:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
