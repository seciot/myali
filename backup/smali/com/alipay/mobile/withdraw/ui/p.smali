.class final Lcom/alipay/mobile/withdraw/ui/p;
.super Lcom/alipay/mobile/common/misc/EditTextEmptyWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/p;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/EditTextEmptyWatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/withdraw/ui/p;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    return-void
.end method


# virtual methods
.method protected final checkHasNull()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/p;->mNeedCheckViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/p;->getViewVisiable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
