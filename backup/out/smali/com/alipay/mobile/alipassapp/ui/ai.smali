.class final Lcom/alipay/mobile/alipassapp/ui/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/ah;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/ah;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ai;->b:Lcom/alipay/mobile/alipassapp/ui/ah;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/ai;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ai;->b:Lcom/alipay/mobile/alipassapp/ui/ah;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->p()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ai;->b:Lcom/alipay/mobile/alipassapp/ui/ah;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ai;->b:Lcom/alipay/mobile/alipassapp/ui/ah;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_nonetwork_toast:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ai;->b:Lcom/alipay/mobile/alipassapp/ui/ah;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ai;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ai;->b:Lcom/alipay/mobile/alipassapp/ui/ah;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
