.class final Lcom/alipay/mobile/alipassapp/ui/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/bd;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bd;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_framework_pullrefresh_overview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    return-object v0
.end method

.method public final onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bd;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b()V

    return-void
.end method
