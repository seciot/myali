.class final Lcom/alipay/mobile/alipassapp/ui/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ao;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/ap;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/alipassapp/ui/ap;-><init>(Lcom/alipay/mobile/alipassapp/ui/ao;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/ai;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
