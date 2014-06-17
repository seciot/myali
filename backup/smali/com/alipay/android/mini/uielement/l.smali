.class final Lcom/alipay/android/mini/uielement/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UIIcon;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/l;->a:Lcom/alipay/android/mini/uielement/UIIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/l;->a:Lcom/alipay/android/mini/uielement/UIIcon;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/UIIcon;->c:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/l;->a:Lcom/alipay/android/mini/uielement/UIIcon;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/UIIcon;->c:Lcom/alipay/android/mini/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    :goto_0
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    sget-object v4, Lcom/alipay/android/mini/event/ActionType;->C:Lcom/alipay/android/mini/event/ActionType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/l;->a:Lcom/alipay/android/mini/uielement/UIIcon;

    invoke-static {v3}, Lcom/alipay/android/mini/uielement/UIIcon;->a(Lcom/alipay/android/mini/uielement/UIIcon;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/l;->a:Lcom/alipay/android/mini/uielement/UIIcon;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UIIcon;->n()Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/alipay/android/mini/uielement/l;->a:Lcom/alipay/android/mini/uielement/UIIcon;

    invoke-virtual {v4, p0, v3}, Lcom/alipay/android/mini/uielement/UIIcon;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/ActionType;)V

    goto :goto_2

    :cond_2
    return-void
.end method
