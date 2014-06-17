.class final Lcom/alipay/android/mini/uielement/m;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/alipay/android/mini/uielement/UIIcon;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIIcon;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/m;->b:Lcom/alipay/android/mini/uielement/UIIcon;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/m;->a:Landroid/widget/ImageView;

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

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
