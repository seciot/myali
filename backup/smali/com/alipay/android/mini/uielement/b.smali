.class final Lcom/alipay/android/mini/uielement/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/BaseElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/BaseElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/b;->a:Lcom/alipay/android/mini/uielement/BaseElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/b;->a:Lcom/alipay/android/mini/uielement/BaseElement;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/BaseElement;->c:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/b;->a:Lcom/alipay/android/mini/uielement/BaseElement;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/BaseElement;->c:Lcom/alipay/android/mini/uielement/ElementAction;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/b;->a:Lcom/alipay/android/mini/uielement/BaseElement;

    invoke-virtual {v1, p0, v0}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/b;->a:Lcom/alipay/android/mini/uielement/BaseElement;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/BaseElement;->n()Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    goto :goto_0
.end method
