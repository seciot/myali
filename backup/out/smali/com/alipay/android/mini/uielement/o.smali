.class final Lcom/alipay/android/mini/uielement/o;
.super Lcom/alipay/android/mini/event/MiniReadBankCardArgs;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/o;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-direct {p0}, Lcom/alipay/android/mini/event/MiniReadBankCardArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReadSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/o;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/o;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
