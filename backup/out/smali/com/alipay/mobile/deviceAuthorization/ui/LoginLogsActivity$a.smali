.class final Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;
.super Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method protected final getFailView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->l:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bT:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bW:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bV:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->bU:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-static {v4}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->c(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;

    if-nez v4, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v4}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;->getLoginDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;->getDeviceFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "client"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->A:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$drawable;->k:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->z:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$drawable;->l:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected final getLoadingView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->n:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method protected final onAutoLoadMore()V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->b()Z

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->a()V

    return-void
.end method

.method protected final onRetry()V
    .locals 0

    return-void
.end method
