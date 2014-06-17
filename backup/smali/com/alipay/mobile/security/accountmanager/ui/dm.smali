.class final Lcom/alipay/mobile/security/accountmanager/ui/dm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;

.field final synthetic b:Landroid/os/HandlerThread;

.field final synthetic c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->a:Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;

    iput-object p3, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->b:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->a:Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;

    invoke-static {}, Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->aY:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cK:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/dn;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/dn;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/dm;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->f:Lcom/alipay/mobile/security/accountmanager/b/b;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->f:Lcom/alipay/mobile/security/accountmanager/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->c:Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->f:Lcom/alipay/mobile/security/accountmanager/b/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/b/b;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/dm;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
