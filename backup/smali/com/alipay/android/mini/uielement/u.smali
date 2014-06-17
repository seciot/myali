.class final Lcom/alipay/android/mini/uielement/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/u;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/u;->a:Lcom/alipay/android/mini/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/UIInput;->a(Lcom/alipay/android/mini/uielement/UIInput;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/widget/EditText;)V

    return-void
.end method
