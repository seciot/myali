.class final Lcom/alipay/mobile/onsitepay/payee/u;
.super Ljava/lang/Object;
.source "FacePayeeHead.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payee/u;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payee/u;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/u;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->access$000(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_pay_success:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_icon:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/misc/CircularImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_account_name:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/u;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/u;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_account_name:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
