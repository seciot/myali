.class final Lcom/alipay/android/mini/uielement/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomCheckbox$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UICheckBox;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UICheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/j;->a:Lcom/alipay/android/mini/uielement/UICheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/j;->a:Lcom/alipay/android/mini/uielement/UICheckBox;

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->t:Lcom/alipay/android/mini/event/ActionType;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/mini/uielement/UICheckBox;->a(Ljava/lang/Object;Lcom/alipay/android/mini/event/ActionType;)V

    return-void
.end method
