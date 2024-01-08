import { useState } from "react";

const CalculatorUI: React.FC = () => {
  const [alphabets, setAddAlphabets] = useState<string>("");
  const handleInput = (event:React.MouseEvent<HTMLButtonElement>) => {
    const buttonText = event.currentTarget.innerText

    setAddAlphabets(alphabets + buttonText);
  };
  return (
    <>
      <div id="keyboard">
        <input
          type="text"
          placeholder="start"
          value={alphabets}
          className="text-xl w-full h-10 mb-3 border bg-green-600 font-mono text-end text-white cursor-auto p-2"
        />
        <div id="firstRow">
          <button onClick={handleInput}>{String.fromCharCode(0x0636)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0635)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0634)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0633)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0632)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0631)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0630)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x062f)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x062e)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x062d)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x062c)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x062b)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x062a)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0628)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0627)}</button>
        </div>
        <div id="second-row">
          <button onClick={handleInput}>{String.fromCharCode(0x0621)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x064a)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0648)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0647)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0646)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0645)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0644)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0643)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0642)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0641)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x063a)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0639)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0638)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0637)}</button>
        </div>

        <div id="arabic-vowels">
          <button onClick={handleInput}>{String.fromCharCode(0x0649)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0626)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0624)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0629)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0625)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0623)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0671)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0622)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x064e)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x064b)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x064f)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x064c)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0651)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0652)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0650)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x064d)}</button>
        </div>
        <div id="arabic-symbols">
          <button onClick={handleInput}>{String.fromCharCode(0x061f)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0021)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x061b)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x060c)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x002e)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0640)}</button>
        </div>

        <div id="Arabic Numbers">
          <button onClick={handleInput}>{String.fromCharCode(0x0660)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0661)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0662)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0663)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0664)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0665)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0666)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0667)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0668)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x0669)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x066c)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x066b)}</button>
          <button onClick={handleInput}>{String.fromCharCode(0x066a)}</button>
        </div>
      </div>
    </>
  );
};

export default CalculatorUI;
