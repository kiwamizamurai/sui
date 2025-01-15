---
title: Module `sui::nitro_attestation`
---



-  [Function `verify_nitro_attestation_internal`](#sui_nitro_attestation_verify_nitro_attestation_internal)
-  [Function `verify_nitro_attestation`](#sui_nitro_attestation_verify_nitro_attestation)


<pre><code><b>use</b> <a href="../std/ascii.md#std_ascii">std::ascii</a>;
<b>use</b> <a href="../std/bcs.md#std_bcs">std::bcs</a>;
<b>use</b> <a href="../std/option.md#std_option">std::option</a>;
<b>use</b> <a href="../std/string.md#std_string">std::string</a>;
<b>use</b> <a href="../std/vector.md#std_vector">std::vector</a>;
<b>use</b> <a href="../sui/address.md#sui_address">sui::address</a>;
<b>use</b> <a href="../sui/clock.md#sui_clock">sui::clock</a>;
<b>use</b> <a href="../sui/hex.md#sui_hex">sui::hex</a>;
<b>use</b> <a href="../sui/object.md#sui_object">sui::object</a>;
<b>use</b> <a href="../sui/transfer.md#sui_transfer">sui::transfer</a>;
<b>use</b> <a href="../sui/tx_context.md#sui_tx_context">sui::tx_context</a>;
</code></pre>



<a name="sui_nitro_attestation_verify_nitro_attestation_internal"></a>

## Function `verify_nitro_attestation_internal`

Internal native function


<pre><code><b>fun</b> <a href="../sui/nitro_attestation.md#sui_nitro_attestation_verify_nitro_attestation_internal">verify_nitro_attestation_internal</a>(attestation: &vector&lt;u8&gt;, current_timestamp: u64): vector&lt;vector&lt;u8&gt;&gt;
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>native</b> <b>fun</b> <a href="../sui/nitro_attestation.md#sui_nitro_attestation_verify_nitro_attestation_internal">verify_nitro_attestation_internal</a>(
    attestation: &vector&lt;u8&gt;,
    current_timestamp: u64
): vector&lt;vector&lt;u8&gt;&gt;;
</code></pre>



</details>

<a name="sui_nitro_attestation_verify_nitro_attestation"></a>

## Function `verify_nitro_attestation`

@param attestation: attesttaion documents bytes data.
@param clock: the clock object.

Returns parsed pcrs after verifying the attestation.


<pre><code><b>public</b> <b>fun</b> <a href="../sui/nitro_attestation.md#sui_nitro_attestation_verify_nitro_attestation">verify_nitro_attestation</a>(attestation: &vector&lt;u8&gt;, <a href="../sui/clock.md#sui_clock">clock</a>: &<a href="../sui/clock.md#sui_clock_Clock">sui::clock::Clock</a>): vector&lt;vector&lt;u8&gt;&gt;
</code></pre>



<details>
<summary>Implementation</summary>


<pre><code><b>public</b> <b>fun</b> <a href="../sui/nitro_attestation.md#sui_nitro_attestation_verify_nitro_attestation">verify_nitro_attestation</a>(
    attestation: &vector&lt;u8&gt;,
    <a href="../sui/clock.md#sui_clock">clock</a>: &Clock
): vector&lt;vector&lt;u8&gt;&gt; {
    <a href="../sui/nitro_attestation.md#sui_nitro_attestation_verify_nitro_attestation_internal">verify_nitro_attestation_internal</a>(attestation, <a href="../sui/clock.md#sui_clock_timestamp_ms">clock::timestamp_ms</a>(<a href="../sui/clock.md#sui_clock">clock</a>))
}
</code></pre>



</details>
