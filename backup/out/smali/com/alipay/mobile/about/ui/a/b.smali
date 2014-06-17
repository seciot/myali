.class public final Lcom/alipay/mobile/about/ui/a/b;
.super Lcom/alipay/mobile/about/ui/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/about/ui/a/b$a;
    }
.end annotation


# instance fields
.field private c:Lcom/alipay/mobile/about/b/b;

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/alipay/mobile/about/b/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/about/ui/b/a;",
            ">;",
            "Lcom/alipay/mobile/about/b/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/about/ui/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p3, p0, Lcom/alipay/mobile/about/ui/a/b;->c:Lcom/alipay/mobile/about/b/b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$drawable;->g:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/a/b;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/a/b;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/a/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/a/b;->d:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/a/b;->a:Landroid/content/Context;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->Z:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/about/ui/a/b$a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/a/b$a;-><init>(Lcom/alipay/mobile/about/ui/a/b;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cr:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/mobile/about/ui/a/b$a;->a:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cq:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/about/ui/a/b$a;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cp:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/about/ui/a/b$a;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/b/a;

    iget-object v2, v1, Lcom/alipay/mobile/about/ui/a/b$a;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, v0, Lcom/alipay/mobile/about/ui/b/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/mobile/about/ui/a/b$a;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/alipay/mobile/about/ui/b/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/a/b;->c:Lcom/alipay/mobile/about/b/b;

    iget-object v1, v1, Lcom/alipay/mobile/about/ui/a/b$a;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/b/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/about/ui/a/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v0, v3}, Lcom/alipay/mobile/about/b/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/about/ui/a/b$a;

    move-object v1, v0

    goto :goto_0
.end method
