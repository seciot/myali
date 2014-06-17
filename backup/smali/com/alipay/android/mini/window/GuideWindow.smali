.class public Lcom/alipay/android/mini/window/GuideWindow;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/util/Set;

.field private static f:Lcom/alipay/android/mini/window/GuideWindow;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Landroid/content/SharedPreferences;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/android/mini/window/GuideWindow;->b:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/alipay/android/mini/window/GuideWindow;->a:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/alipay/android/mini/window/GuideWindow;->e:Z

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "msp_guides"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "version"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/mini/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alipay/android/mini/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "info"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "switch"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "desc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static a()Lcom/alipay/android/mini/window/GuideWindow;
    .locals 1

    sget-object v0, Lcom/alipay/android/mini/window/GuideWindow;->f:Lcom/alipay/android/mini/window/GuideWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/mini/window/GuideWindow;

    invoke-direct {v0}, Lcom/alipay/android/mini/window/GuideWindow;-><init>()V

    sput-object v0, Lcom/alipay/android/mini/window/GuideWindow;->f:Lcom/alipay/android/mini/window/GuideWindow;

    :cond_0
    sget-object v0, Lcom/alipay/android/mini/window/GuideWindow;->f:Lcom/alipay/android/mini/window/GuideWindow;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/GuideWindow;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/GuideWindow;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/GuideWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/GuideWindow;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/GuideWindow;->e:Z

    if-eqz v0, :cond_0

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/app/R$id;->C:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-boolean v3, p0, Lcom/alipay/android/mini/window/GuideWindow;->e:Z

    iget-object v2, p0, Lcom/alipay/android/mini/window/GuideWindow;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/mini/uielement/BaseElement;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    instance-of v0, p3, Lcom/alipay/android/mini/uielement/UIInput;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/alipay/android/mini/uielement/UIInput;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UIInput;->z()Landroid/widget/EditText;

    move-result-object v0

    move-object v2, v0

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/alipay/android/mini/window/GuideWindow;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alipay/android/mini/uielement/BaseElement;->g()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    instance-of v0, p3, Lcom/alipay/android/mini/uielement/UISimplePassword;

    if-eqz v0, :cond_6

    move-object v0, p3

    check-cast v0, Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UISimplePassword;->z()Landroid/widget/EditText;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/android/mini/window/GuideWindow;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-boolean v4, p0, Lcom/alipay/android/mini/window/GuideWindow;->e:Z

    iget-object v0, p0, Lcom/alipay/android/mini/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v3, Lcom/alipay/android/app/R$id;->C:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/mini/window/GuideWindow;->c:Landroid/view/View;

    if-nez v5, :cond_0

    sget v5, Lcom/alipay/android/app/R$layout;->c:I

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/window/GuideWindow;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/mini/window/GuideWindow;->c:Landroid/view/View;

    sget v4, Lcom/alipay/android/app/R$id;->w:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v4, Lcom/alipay/android/mini/window/h;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/alipay/android/mini/window/h;-><init>(Lcom/alipay/android/mini/window/GuideWindow;Landroid/widget/EditText;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/mini/window/GuideWindow;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alipay/android/mini/uielement/BaseElement;->g()V

    goto :goto_1

    :cond_6
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/GuideWindow;->e:Z

    return v0
.end method
