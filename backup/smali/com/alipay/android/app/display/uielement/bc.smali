.class final Lcom/alipay/android/app/display/uielement/bc;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UILabel;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UILabel;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bc;->b:Lcom/alipay/android/app/display/uielement/UILabel;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alipay/android/app/widget/BaseTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bc;->b:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Lcom/alipay/android/app/display/uielement/UILabel;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Landroid/widget/TextView;I)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bc;->b:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Lcom/alipay/android/app/display/uielement/UILabel;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
