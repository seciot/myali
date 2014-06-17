.class final Lcom/alipay/mobile/about/ui/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/b/c;

    iget v4, v0, Lcom/alipay/mobile/about/ui/b/c;->a:I

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v1, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v1}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->c(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/about/ui/b/b;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/about/ui/b/b;->a(Z)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/about/ui/b/b;->a(Landroid/view/View;)V

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v5, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->l(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v5, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->k(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alipay/mobile/about/ui/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v1, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v1}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->j(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v1, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v1}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->p(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v1

    if-lt v4, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v1, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v1}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->p(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v1

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v5, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->q(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v5

    add-int/2addr v1, v5

    if-gt v4, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v1, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/b/c;->b:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v1, "\u5df2\u9009\u62e9%d\u5f20\uff0c\u8fd8\u53ef\u4ee5\u9009\u62e9%d\u5f20"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v5, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v5, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v6, v6, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v6}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v6, v6, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v6}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->o(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v1, v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/an;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;Z)V

    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method
