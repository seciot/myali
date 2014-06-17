.class final Lcom/alipay/android/mini/uielement/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/event/MiniEventArgs;

.field final synthetic b:Lcom/alipay/android/mini/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIInput;Lcom/alipay/android/mini/event/MiniEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/p;->b:Lcom/alipay/android/mini/uielement/UIInput;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/event/MiniEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/p;->b:Lcom/alipay/android/mini/uielement/UIInput;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/p;->b:Lcom/alipay/android/mini/uielement/UIInput;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/event/MiniEventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/UIInput;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/MiniEventArgs;)V

    return-void
.end method
