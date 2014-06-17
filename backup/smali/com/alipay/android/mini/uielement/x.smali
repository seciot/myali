.class final Lcom/alipay/android/mini/uielement/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/CustomEditText;

.field final synthetic b:Lcom/alipay/android/mini/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIInput;Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/x;->b:Lcom/alipay/android/mini/uielement/UIInput;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/x;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/x;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/x;->b:Lcom/alipay/android/mini/uielement/UIInput;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/x;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/uielement/UIInput;Lcom/alipay/android/mini/widget/CustomEditText;)V

    return-void
.end method
