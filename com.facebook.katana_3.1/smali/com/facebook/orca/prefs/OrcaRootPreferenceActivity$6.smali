.class Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$6;
.super Ljava/lang/Object;
.source "OrcaRootPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$6;->b:Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;

    iput-object p2, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$6;->b:Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;

    invoke-static {v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->c(Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;)Lcom/facebook/analytics/AnalyticsLogger;

    move-result-object v0

    new-instance v1, Lcom/facebook/analytics/HoneyClientEvent;

    const-string v2, "click"

    invoke-direct {v1, v2}, Lcom/facebook/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$6;->b:Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->t_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/analytics/HoneyClientEvent;

    move-result-object v1

    const-string v2, "button"

    invoke-virtual {v1, v2}, Lcom/facebook/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/analytics/HoneyClientEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/analytics/HoneyClientEvent;->i(Ljava/lang/String;)Lcom/facebook/analytics/HoneyClientEvent;

    move-result-object v1

    const-string v2, "orca_preferences_delete_account_dialog_confirm"

    invoke-virtual {v1, v2}, Lcom/facebook/analytics/HoneyClientEvent;->g(Ljava/lang/String;)Lcom/facebook/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/analytics/AnalyticsLogger;->a(Lcom/facebook/analytics/HoneyAnalyticsEvent;)V

    .line 252
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$6;->b:Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->b()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/auth/LogoutHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/LogoutHandler;

    .line 253
    invoke-interface {v0}, Lcom/facebook/orca/auth/LogoutHandler;->b()V

    .line 254
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 255
    return-void
.end method
