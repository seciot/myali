.class final Lcom/alipay/mobile/alipassapp/ui/common/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/at;->b:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/at;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/at;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/at;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLineCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v3, v3, -0x3

    invoke-interface {v5, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/at;->b:Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/alipassapp/ui/common/CouponPrimaryFieldLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
