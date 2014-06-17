.class final Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:I

.field b:I

.field final synthetic c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->a:I

    iput v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->b:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->c(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->c(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->c(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->g(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->ac:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-direct {v5, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bw:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/RecycleabledImageView;

    iput-object v0, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->a:Lcom/alipay/mobile/about/ui/RecycleabledImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bu:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->d:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bA:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->c:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->by:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->f:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->e:Landroid/view/View;

    iget-object v0, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->a:Lcom/alipay/mobile/about/ui/RecycleabledImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/about/ui/RecycleabledImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v4, v6, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v4}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->g(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    div-int/lit8 v4, v4, 0x3

    :goto_0
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bk:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v5, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v5

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->c(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/b/b;

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v2}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->i(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/about/b/b;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->a:Lcom/alipay/mobile/about/ui/RecycleabledImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->h(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/mobile/about/b/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p2

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v4, v6, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v4}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->g(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenWidth()I

    move-result v4

    iget-object v6, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v6}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v6}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v6}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getNumColumns()I

    move-result v6

    div-int/2addr v4, v6

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v4}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v4

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->c(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/b/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/about/ui/b/b;->a(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->c()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v4}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->j(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeView(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/about/ui/b/b;->a(Landroid/view/View;)V

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v3}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->k(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->l(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->r(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const-string/jumbo v3, "\u5df2\u9009\u62e9%d\u5f20\uff0c\u8fd8\u53ef\u4ee5\u9009\u62e9%d\u5f20"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v6}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v6}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->o(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->e(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/about/ui/ao;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/about/ui/ao;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;)V

    const-wide/16 v4, 0x1e

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;Z)V

    :goto_2
    return-void

    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v4}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->m(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v5}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->n(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v6}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->o(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->Y:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->toast(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/ui/b/b;->a(Z)V

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v4}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->k(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/about/ui/b/c;

    invoke-direct {v5, v3, p1}, Lcom/alipay/mobile/about/ui/b/c;-><init>(ILandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/about/ui/b/b;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->j(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/mobile/about/ui/an;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/ui/an;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->s(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)I

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->t(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->u(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
