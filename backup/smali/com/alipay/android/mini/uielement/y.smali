.class final Lcom/alipay/android/mini/uielement/y;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UILabel;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UILabel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/y;->a:Lcom/alipay/android/mini/uielement/UILabel;

    invoke-direct {p0}, Lcom/alipay/android/app/widget/BaseTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/y;->a:Lcom/alipay/android/mini/uielement/UILabel;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UILabel;->a(Lcom/alipay/android/mini/uielement/UILabel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/y;->a:Lcom/alipay/android/mini/uielement/UILabel;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UILabel;->a(Lcom/alipay/android/mini/uielement/UILabel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
