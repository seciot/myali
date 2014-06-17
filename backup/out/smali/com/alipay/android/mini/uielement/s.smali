.class final Lcom/alipay/android/mini/uielement/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/s;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/s;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/t;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/t;-><init>(Lcom/alipay/android/mini/uielement/s;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->justInitIconListener(Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/s;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/mini/widget/CustomEditText;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method
