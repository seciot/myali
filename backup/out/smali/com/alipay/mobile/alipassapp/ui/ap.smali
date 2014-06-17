.class final Lcom/alipay/mobile/alipassapp/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/ao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/ao;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->b:Lcom/alipay/mobile/alipassapp/ui/ao;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->a:Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->b:Lcom/alipay/mobile/alipassapp/ui/ao;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    const-string/jumbo v1, "\u6b63\u5728\u5220\u9664"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->b:Lcom/alipay/mobile/alipassapp/ui/ao;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->b:Lcom/alipay/mobile/alipassapp/ui/ao;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    const/4 v1, 0x0

    const-string/jumbo v2, "del"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->a:Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->a:Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getItemFrom()I

    move-result v0

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->b:Lcom/alipay/mobile/alipassapp/ui/ao;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->a:Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPartnerID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->a:Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->b:Lcom/alipay/mobile/alipassapp/ui/ao;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->a:Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPassId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ap;->b:Lcom/alipay/mobile/alipassapp/ui/ao;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
